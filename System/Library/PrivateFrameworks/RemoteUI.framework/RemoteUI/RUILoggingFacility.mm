@interface RUILoggingFacility
@end

@implementation RUILoggingFacility

uint64_t ___RUILoggingFacility_block_invoke()
{
  v0 = os_log_create("com.apple.remoteui", "log");
  v1 = _RUILoggingFacility_oslog;
  _RUILoggingFacility_oslog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end