@interface TVRCMediaEventsLog
@end

@implementation TVRCMediaEventsLog

uint64_t ___TVRCMediaEventsLog_block_invoke()
{
  _TVRCMediaEventsLog_log = os_log_create("com.apple.TVRemoteCore", "MediaEvents");

  return MEMORY[0x2821F96F8]();
}

@end