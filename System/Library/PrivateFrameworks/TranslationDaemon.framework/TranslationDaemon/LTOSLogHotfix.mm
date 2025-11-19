@interface LTOSLogHotfix
@end

@implementation LTOSLogHotfix

uint64_t ___LTOSLogHotfix_block_invoke()
{
  _LTOSLogHotfix_log = os_log_create("com.apple.Translation", "Hotfix");

  return MEMORY[0x2821F96F8]();
}

@end