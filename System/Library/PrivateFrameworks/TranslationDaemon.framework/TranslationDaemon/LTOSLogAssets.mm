@interface LTOSLogAssets
@end

@implementation LTOSLogAssets

uint64_t ___LTOSLogAssets_block_invoke()
{
  _LTOSLogAssets_log = os_log_create("com.apple.Translation", "Assets");

  return MEMORY[0x2821F96F8]();
}

@end