@interface TCSInitializeLogging
@end

@implementation TCSInitializeLogging

uint64_t ___TCSInitializeLogging_block_invoke()
{
  TCSLogDefault = os_log_create([@"com.apple.tincan" UTF8String], "default");

  return MEMORY[0x2821F96F8]();
}

@end