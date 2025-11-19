@interface UISCreateLoggerIfNeeded
@end

@implementation UISCreateLoggerIfNeeded

uint64_t ___UISCreateLoggerIfNeeded_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = os_log_create("com.apple.uikitservices.servicefacilities", *(a1 + 40));

  return MEMORY[0x1EEE66BB8]();
}

@end