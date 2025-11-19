@interface LTOSLogSystemTranslation
@end

@implementation LTOSLogSystemTranslation

uint64_t ___LTOSLogSystemTranslation_block_invoke()
{
  _LTOSLogSystemTranslation_log = os_log_create("com.apple.Translation", "SystemTranslation");

  return MEMORY[0x2821F96F8]();
}

@end