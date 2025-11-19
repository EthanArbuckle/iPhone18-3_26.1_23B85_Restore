@interface UISMCBarsEnabled
@end

@implementation UISMCBarsEnabled

void ___UISMCBarsEnabled_block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v2 = _UIInternalPreference_SMCBarMode;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_SMCBarMode)
    {
      while (v0 >= v2)
      {
        _UIInternalPreferenceSync(v0, &_UIInternalPreference_SMCBarMode, @"SMCBarMode", _UIInternalPreferenceUpdateInteger);
        v2 = _UIInternalPreference_SMCBarMode;
        if (v0 == _UIInternalPreference_SMCBarMode)
        {
          goto LABEL_4;
        }
      }

      switch(qword_1ED48AA40)
      {
        case 2:
          _MergedGlobals_15_0 = 1;
          return;
        case 1:
          v3 = +[UIDevice currentDevice];
          if ([v3 userInterfaceIdiom] != 6)
          {
            v1 = dyld_program_sdk_at_least();
            goto LABEL_7;
          }

          goto LABEL_5;
        case -1:
          _MergedGlobals_15_0 = 0;
          return;
      }
    }
  }

LABEL_4:
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] != 6)
  {
    v1 = _UISolariumEnabled();
    goto LABEL_7;
  }

LABEL_5:
  v1 = 0;
LABEL_7:
  _MergedGlobals_15_0 = v1;
}

@end