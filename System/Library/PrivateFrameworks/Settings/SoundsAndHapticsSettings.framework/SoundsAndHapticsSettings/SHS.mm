@interface SHS
@end

@implementation SHS

uint64_t __SHS_BundleForSoundsAndHapticsSettingsFramework_block_invoke()
{
  SHS_BundleForSoundsAndHapticsSettingsFramework__soundsAndHapticsSettingsFrameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

@end