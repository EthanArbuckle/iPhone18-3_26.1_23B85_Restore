@interface LTOSLogAnalytics
@end

@implementation LTOSLogAnalytics

uint64_t ___LTOSLogAnalytics_block_invoke()
{
  _LTOSLogAnalytics_log = os_log_create("com.apple.Translation", "Analytics");

  return MEMORY[0x2821F96F8]();
}

@end