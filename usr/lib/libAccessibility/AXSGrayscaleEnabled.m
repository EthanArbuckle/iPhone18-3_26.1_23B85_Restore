@interface AXSGrayscaleEnabled
@end

@implementation AXSGrayscaleEnabled

uint64_t ___AXSGrayscaleEnabled_block_invoke()
{
  v1 = 1;
  result = _getBooleanPreference(kAXSGrayscaleEnabledPreference, &v1);
  if (v1)
  {
    _kAXSCacheGrayscaleEnabled = result;
  }

  return result;
}

@end