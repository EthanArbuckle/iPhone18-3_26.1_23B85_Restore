@interface UIIsGesturesFrameworkEnabled
@end

@implementation UIIsGesturesFrameworkEnabled

uint64_t ___UIIsGesturesFrameworkEnabled_block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v2 = getenv("GESTURES_FRAMEWORK_ENABLED");
    if (v2)
    {
      v3 = *v2;
      if (v3 == 48)
      {
        if (!v2[1])
        {
          result = 0;
          goto LABEL_7;
        }
      }

      else if (v3 == 49 && !v2[1])
      {
        result = 1;
        goto LABEL_7;
      }
    }
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    goto LABEL_5;
  }

  v4 = _UIInternalPreference_GesturesFrameworkEnabled;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_GesturesFrameworkEnabled)
  {
    goto LABEL_5;
  }

  while (v0 >= v4)
  {
    _UIInternalPreferenceSync(v0, &_UIInternalPreference_GesturesFrameworkEnabled, @"GesturesFrameworkEnabled", _UIInternalPreferenceUpdateId);
    v4 = _UIInternalPreference_GesturesFrameworkEnabled;
    if (v0 == _UIInternalPreference_GesturesFrameworkEnabled)
    {
      goto LABEL_5;
    }
  }

  v5 = qword_1ED48B040;
  if (!v5)
  {
LABEL_5:
    result = dyld_program_sdk_at_least();
    if (result)
    {
      result = _os_feature_enabled_impl();
    }
  }

  else
  {
    v6 = v5;
    v7 = [v5 BOOLValue];

    result = v7;
  }

LABEL_7:
  _UIIsGesturesFrameworkEnabled_enabled = result;
  return result;
}

@end