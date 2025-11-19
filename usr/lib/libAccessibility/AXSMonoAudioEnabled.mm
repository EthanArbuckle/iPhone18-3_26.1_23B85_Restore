@interface AXSMonoAudioEnabled
@end

@implementation AXSMonoAudioEnabled

uint64_t ___AXSMonoAudioEnabled_block_invoke()
{
  v1 = 1;
  result = _getBooleanPreference(kAXSMonoAudioEnabledPreference, &v1);
  if (v1)
  {
    _kAXSCacheMonoAudioEnabled = result;
  }

  return result;
}

@end