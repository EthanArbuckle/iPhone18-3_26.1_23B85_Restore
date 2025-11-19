@interface MABrainUtilityConclaveEnabled
@end

@implementation MABrainUtilityConclaveEnabled

void __MABrainUtilityConclaveEnabled_block_invoke(id a1)
{
  if (__isPlatformVersionAtLeast(2, 18, 2, 0))
  {
    if (MABrainUtilityDeviceSupportsExclaves_onceToken != -1)
    {
      MABrainUtilityDeviceSupportsExclaves_cold_1();
    }

    if (MABrainUtilityDeviceSupportsExclaves_answer == 1)
    {
      MABrainUtilityConclaveEnabled_answer = _os_feature_enabled_impl();
    }
  }
}

@end