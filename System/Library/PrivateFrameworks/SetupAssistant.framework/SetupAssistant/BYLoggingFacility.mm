@interface BYLoggingFacility
@end

@implementation BYLoggingFacility

uint64_t ___BYLoggingFacility_block_invoke()
{
  _BYLoggingFacility_oslog = os_log_create("com.apple.purplebuddy", "general");

  return MEMORY[0x1EEE66BB8]();
}

@end