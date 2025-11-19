@interface TVRCGeneralLog
@end

@implementation TVRCGeneralLog

uint64_t ___TVRCGeneralLog_block_invoke()
{
  _TVRCGeneralLog_log = os_log_create("com.apple.TVRemoteCore", "General");

  return MEMORY[0x2821F96F8]();
}

@end