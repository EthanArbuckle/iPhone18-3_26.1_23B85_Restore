@interface UIShouldLogTrackedState
@end

@implementation UIShouldLogTrackedState

void ___UIShouldLogTrackedState_block_invoke()
{
  if ((_UIInternalPreferenceUsesDefault_0(&_MergedGlobals_940, @"TraitUsageTrackingLoggingEnabled") & 1) != 0 || !byte_1ED48B1A4)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    if (([v1 BOOLForKey:@"UITraitUsageTrackingLoggingEnabled"] & 1) != 0 || (_UIInternalPreferenceUsesDefault_0(&dword_1ED48B1A8, @"StateTrackingLoggingEnabled") & 1) == 0 && byte_1ED48B1AC)
    {
      _MergedGlobals_15_4 = 1;
    }

    else
    {
      v0 = [MEMORY[0x1E695E000] standardUserDefaults];
      _MergedGlobals_15_4 = [v0 BOOLForKey:@"UIStateTrackingLoggingEnabled"];
    }
  }

  else
  {
    _MergedGlobals_15_4 = 1;
  }
}

@end