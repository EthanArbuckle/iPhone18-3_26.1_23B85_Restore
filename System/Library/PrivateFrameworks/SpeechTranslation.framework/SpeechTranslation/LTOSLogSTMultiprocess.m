@interface LTOSLogSTMultiprocess
@end

@implementation LTOSLogSTMultiprocess

uint64_t ___LTOSLogSTMultiprocess_block_invoke()
{
  _LTOSLogSTMultiprocess_log = os_log_create("com.apple.Translation", "STMultiprocess");

  return MEMORY[0x2821F96F8]();
}

@end