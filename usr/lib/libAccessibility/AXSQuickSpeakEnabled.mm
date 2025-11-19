@interface AXSQuickSpeakEnabled
@end

@implementation AXSQuickSpeakEnabled

uint64_t ___AXSQuickSpeakEnabled_block_invoke()
{
  v1 = 1;
  result = _getBooleanPreference(kAXSQuickSpeakEnabledPreference, &v1);
  if (v1)
  {
    _kAXSCacheQuickSpeakEnabled = result;
  }

  return result;
}

@end