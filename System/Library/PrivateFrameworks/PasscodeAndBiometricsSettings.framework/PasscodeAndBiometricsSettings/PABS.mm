@interface PABS
@end

@implementation PABS

uint64_t __PABS_BundleForPABSFramework_block_invoke()
{
  PABS_BundleForPABSFramework__frameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

@end