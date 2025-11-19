@interface LTOSLogVisualTranslation
@end

@implementation LTOSLogVisualTranslation

uint64_t ___LTOSLogVisualTranslation_block_invoke()
{
  _LTOSLogVisualTranslation_log = os_log_create("com.apple.Translation", "VisualTranslation");

  return MEMORY[0x2821F96F8]();
}

@end