@interface UIShouldEnableFocusLoopDebugger
@end

@implementation UIShouldEnableFocusLoopDebugger

void ___UIShouldEnableFocusLoopDebugger_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"UIFocusLoopDebuggerEnabled"];

  byte_1ED4A2379 = (byte_1ED48B64C != 0) & ~_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UIFocusLoopDebuggerEnabled, @"UIFocusLoopDebuggerEnabled", _UIInternalPreferenceUpdateBool) | v1 & 1;
  if (v1)
  {
    v2 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED4A23A0) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "UIFocusLoopDebuggerEnabled";
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Focus loop debugger enabled via -%s launch argument.", &v3, 0xCu);
    }
  }
}

@end