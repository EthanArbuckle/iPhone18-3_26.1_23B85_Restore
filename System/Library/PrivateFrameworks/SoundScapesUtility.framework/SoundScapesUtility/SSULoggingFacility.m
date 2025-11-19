@interface SSULoggingFacility
@end

@implementation SSULoggingFacility

uint64_t ___SSULoggingFacility_block_invoke()
{
  _SSULoggingFacility_oslog = os_log_create("com.apple.soundscapes.utility", "log");

  return MEMORY[0x2821F96F8]();
}

@end