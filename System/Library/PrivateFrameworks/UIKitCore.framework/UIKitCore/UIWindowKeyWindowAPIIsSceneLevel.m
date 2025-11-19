@interface UIWindowKeyWindowAPIIsSceneLevel
@end

@implementation UIWindowKeyWindowAPIIsSceneLevel

void ___UIWindowKeyWindowAPIIsSceneLevel_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  _MergedGlobals_172 = dyld_program_sdk_at_least();
  v0 = *(__UILogGetCategoryCachedImpl("KeyWindow", &qword_1EA968DE0) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    if (_MergedGlobals_172)
    {
      v1 = @"YES";
    }

    else
    {
      v1 = @"NO";
    }

    v2 = 138412290;
    v3 = v1;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_DEFAULT, "Key window API is scene-level: %@", &v2, 0xCu);
  }
}

@end