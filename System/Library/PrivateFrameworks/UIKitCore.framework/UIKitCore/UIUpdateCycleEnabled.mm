@interface UIUpdateCycleEnabled
@end

@implementation UIUpdateCycleEnabled

void ___UIUpdateCycleEnabled_block_invoke()
{
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UpdateCycleEnabled, @"UpdateCycleEnabled", _UIInternalPreferenceUpdateBool))
  {
    v0 = &byte_1ED49FC8A;
    if (qword_1ED49FCB0 != -1)
    {
      dispatch_once(&qword_1ED49FCB0, &__block_literal_global_13_2);
    }
  }

  else
  {
    v0 = &byte_1ED48B3F4;
  }

  _MergedGlobals_1238[0] = *v0;
}

@end