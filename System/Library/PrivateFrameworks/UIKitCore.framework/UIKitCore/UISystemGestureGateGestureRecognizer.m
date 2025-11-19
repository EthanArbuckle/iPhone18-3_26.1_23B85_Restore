@interface UISystemGestureGateGestureRecognizer
@end

@implementation UISystemGestureGateGestureRecognizer

void __63___UISystemGestureGateGestureRecognizer_setDelaysTouchesBegan___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_VisualizeMaterials_block_invoke___s_category_0) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 32))
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Trying to set delaysTouchesBegan to %s on a system gate gesture recognizer - this is unsupported and will have undesired side effects", &v4, 0xCu);
  }
}

void __63___UISystemGestureGateGestureRecognizer_setDelaysTouchesEnded___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_VisualizeMaterials_block_invoke_2___s_category_0) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 32))
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Trying to set delaysTouchesEnded to %s on a system gate gesture recognizer - this is unsupported and will have undesired side effects", &v4, 0xCu);
  }
}

void __64___UISystemGestureGateGestureRecognizer_touchesBegan_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _timeOut];
    WeakRetained = v2;
  }
}

@end