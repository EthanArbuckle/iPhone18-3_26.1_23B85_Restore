@interface TVRCMDMLog
@end

@implementation TVRCMDMLog

uint64_t ___TVRCMDMLog_block_invoke()
{
  _TVRCMDMLog_log = os_log_create("com.apple.TVRemoteCore", "MDM");

  return MEMORY[0x2821F96F8]();
}

@end