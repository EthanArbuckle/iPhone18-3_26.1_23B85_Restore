@interface UIInputResponderController
- (CGRect)visibleFrameInView:(id)a3;
- (CGRect)visibleInputViewFrameInView:(id)a3;
- (void)assertNo;
@end

@implementation UIInputResponderController

- (void)assertNo
{
  if (os_variant_has_internal_diagnostics())
  {
    v3 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "A UIInputResponderController instance will never be created.", buf, 2u);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &assertNo___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "A UIInputResponderController instance will never be created.", v4, 2u);
    }
  }
}

- (CGRect)visibleFrameInView:(id)a3
{
  [(UIInputResponderController *)self assertNo];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)visibleInputViewFrameInView:(id)a3
{
  [(UIInputResponderController *)self assertNo];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end