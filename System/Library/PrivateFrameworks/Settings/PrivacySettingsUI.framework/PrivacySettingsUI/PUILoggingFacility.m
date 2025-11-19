@interface PUILoggingFacility
@end

@implementation PUILoggingFacility

uint64_t ___PUILoggingFacility_block_invoke()
{
  _PUILoggingFacility_oslog = os_log_create("com.apple.preferences.PrivacySettings", "log");

  return MEMORY[0x2821F96F8]();
}

@end