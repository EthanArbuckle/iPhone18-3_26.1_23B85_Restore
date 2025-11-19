@interface LTOSLogSTInstrumentation
@end

@implementation LTOSLogSTInstrumentation

uint64_t ___LTOSLogSTInstrumentation_block_invoke()
{
  _LTOSLogSTInstrumentation_log = os_log_create("com.apple.Translation", "STInstrumentation");

  return MEMORY[0x2821F96F8]();
}

@end