@interface AXSDidSetDwellKeyboardContinuousPathEnabled
@end

@implementation AXSDidSetDwellKeyboardContinuousPathEnabled

uint64_t ___AXSDidSetDwellKeyboardContinuousPathEnabled_block_invoke()
{
  v1 = 1;
  result = _getBooleanPreference(kAXSDidSetDwellKeyboardContinuousPathEnabledPreference, &v1);
  if (v1)
  {
    _kAXSCacheDidSetDwellKeyboardContinuousPathEnabled = result;
  }

  return result;
}

@end