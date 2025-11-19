@interface UITouchSensitiveButtonRadiusInPointsFromMM
@end

@implementation UITouchSensitiveButtonRadiusInPointsFromMM

void ___UITouchSensitiveButtonRadiusInPointsFromMM_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    v5 = [*(a1 + 32) _eventRoutingScene];
    v6 = [v5 debugDescription];
    v7 = 138412290;
    v8 = v6;
    _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unexpected scene and screen receiving dynamic button delivery: %@", &v7, 0xCu);
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &_UITouchSensitiveButtonPositionHintsString_block_invoke___s_category) + 8);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 _eventRoutingScene];
    v6 = [v5 debugDescription];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Unexpected scene and screen receiving dynamic button delivery: %@", &v7, 0xCu);
  }

LABEL_5:
}

@end