@interface PSG
@end

@implementation PSG

uint64_t __PSG_BundleForGeneralSettingsUIFramework_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = PSG_BundleForGeneralSettingsUIFramework__generalSettingsUIFrameworkBundle;
  PSG_BundleForGeneralSettingsUIFramework__generalSettingsUIFrameworkBundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end