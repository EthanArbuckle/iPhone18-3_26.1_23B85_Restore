@interface TVRCPreferredDeviceLog
@end

@implementation TVRCPreferredDeviceLog

uint64_t ___TVRCPreferredDeviceLog_block_invoke()
{
  _TVRCPreferredDeviceLog_log = os_log_create("com.apple.TVRemoteCore", "PreferredDevice");

  return MEMORY[0x2821F96F8]();
}

@end