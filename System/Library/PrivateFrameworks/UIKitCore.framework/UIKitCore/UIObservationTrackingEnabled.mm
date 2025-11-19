@interface UIObservationTrackingEnabled
@end

@implementation UIObservationTrackingEnabled

uint64_t ___UIObservationTrackingEnabled_block_invoke()
{
  result = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_ForceObservationTrackingDisabled, @"ForceObservationTrackingDisabled", _UIInternalPreferenceUpdateBool);
  if (byte_1ED48B2FC)
  {
    v1 = result;
  }

  else
  {
    v1 = 1;
  }

  _MergedGlobals_1202 = v1;
  return result;
}

@end