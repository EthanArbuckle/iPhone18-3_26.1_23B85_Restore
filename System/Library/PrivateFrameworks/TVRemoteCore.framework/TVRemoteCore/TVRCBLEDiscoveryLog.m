@interface TVRCBLEDiscoveryLog
@end

@implementation TVRCBLEDiscoveryLog

uint64_t ___TVRCBLEDiscoveryLog_block_invoke()
{
  _TVRCBLEDiscoveryLog_log = os_log_create("com.apple.TVRemoteCore", "BLEDiscovery");

  return MEMORY[0x2821F96F8]();
}

@end