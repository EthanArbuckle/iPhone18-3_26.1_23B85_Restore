@interface UIObservationTrackingLoggingEnabled
@end

@implementation UIObservationTrackingLoggingEnabled

void ___UIObservationTrackingLoggingEnabled_block_invoke()
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_ObservationTrackingLoggingEnabled, @"ObservationTrackingLoggingEnabled", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1ED48B304)
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    byte_1ED49F4D9 = [v0 BOOLForKey:@"UIObservationTrackingLoggingEnabled"];
  }

  else
  {
    byte_1ED49F4D9 = 1;
  }
}

@end