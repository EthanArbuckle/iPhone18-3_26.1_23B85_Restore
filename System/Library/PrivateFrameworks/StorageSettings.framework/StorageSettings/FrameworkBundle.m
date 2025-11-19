@interface FrameworkBundle
@end

@implementation FrameworkBundle

uint64_t ___FrameworkBundle_block_invoke()
{
  _FrameworkBundle_bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.StorageSettingsFramework"];

  return MEMORY[0x2821F96F8]();
}

@end