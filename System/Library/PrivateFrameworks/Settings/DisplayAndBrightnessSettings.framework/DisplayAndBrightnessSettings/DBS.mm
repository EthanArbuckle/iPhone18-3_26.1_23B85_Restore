@interface DBS
@end

@implementation DBS

uint64_t __DBS_BundleForDisplayAndBrightnessSettingsFramework_block_invoke()
{
  DBS_BundleForDisplayAndBrightnessSettingsFramework__displayAndBrightnessSettingsFrameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

@end