@interface LTOSLogSELFLogging
@end

@implementation LTOSLogSELFLogging

uint64_t ___LTOSLogSELFLogging_block_invoke()
{
  _LTOSLogSELFLogging_log = os_log_create("com.apple.Translation", "SELFLogging");

  return MEMORY[0x2821F96F8]();
}

@end