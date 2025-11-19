@interface UIVariableFrameDurationEnabled
@end

@implementation UIVariableFrameDurationEnabled

void ___UIVariableFrameDurationEnabled_block_invoke()
{
  if (qword_1ED49FC98 != -1)
  {
    dispatch_once(&qword_1ED49FC98, &__block_literal_global_453);
  }

  if (_MergedGlobals_1238[0] == 1)
  {
    if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UpdateAdaptiveRateNeeded, @"UpdateAdaptiveRateNeeded", _UIInternalPreferenceUpdateBool))
    {
      v0 = &byte_1ED49FC8B;
      if (qword_1ED49FCB0 != -1)
      {
        dispatch_once(&qword_1ED49FCB0, &__block_literal_global_13_2);
      }
    }

    else
    {
      v0 = &byte_1ED48B3FC;
    }

    byte_1ED49FC89 = *v0;
  }
}

@end