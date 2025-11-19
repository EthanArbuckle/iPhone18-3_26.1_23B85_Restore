@interface PUI
@end

@implementation PUI

uint64_t __PUI_BundleForPrivacySettingsFramework_block_invoke()
{
  PUI_BundleForPrivacySettingsFramework__privacySettingsFrameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

@end