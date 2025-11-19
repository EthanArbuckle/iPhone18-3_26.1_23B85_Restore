@interface UIShouldEnableStatusDebugOverlay
@end

@implementation UIShouldEnableStatusDebugOverlay

void ___UIShouldEnableStatusDebugOverlay_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"UIFocusStatusDebugOverlayEnabled"];

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v2 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v6 = _UIInternalPreference_UIFocusStatusDebugOverlayEnabled, _UIInternalPreferencesRevisionVar == _UIInternalPreference_UIFocusStatusDebugOverlayEnabled))
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v3 = v2 < v6;
      if (v2 < v6)
      {
        break;
      }

      _UIInternalPreferenceSync(v2, &_UIInternalPreference_UIFocusStatusDebugOverlayEnabled, @"UIFocusStatusDebugOverlayEnabled", _UIInternalPreferenceUpdateBool);
      v6 = _UIInternalPreference_UIFocusStatusDebugOverlayEnabled;
    }

    while (v2 != _UIInternalPreference_UIFocusStatusDebugOverlayEnabled);
  }

  if (byte_1ED48B2AC)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  _MergedGlobals_1170 = (v4 | v1) & 1;
  if (v1)
  {
    v5 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49F000) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "UIFocusStatusDebugOverlayEnabled";
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Focus debugging overlay enabled via -%s launch argument.", &v7, 0xCu);
    }
  }
}

@end