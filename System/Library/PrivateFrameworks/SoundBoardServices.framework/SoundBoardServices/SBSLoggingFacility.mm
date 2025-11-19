@interface SBSLoggingFacility
@end

@implementation SBSLoggingFacility

uint64_t ___SBSLoggingFacility_block_invoke()
{
  _SBSLoggingFacility_oslog = os_log_create("com.apple.soundboard.services", "log");

  return MEMORY[0x2821F96F8]();
}

@end