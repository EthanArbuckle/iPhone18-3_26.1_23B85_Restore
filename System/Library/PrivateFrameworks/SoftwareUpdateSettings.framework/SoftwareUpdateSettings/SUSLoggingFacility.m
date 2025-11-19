@interface SUSLoggingFacility
@end

@implementation SUSLoggingFacility

double ___SUSLoggingFacility_block_invoke()
{
  v0 = os_log_create("com.apple.preferences.SoftwareUpdateSettings", "log");
  v1 = _SUSLoggingFacility_oslog;
  _SUSLoggingFacility_oslog = v0;
  *&result = MEMORY[0x277D82BD8](v1).n128_u64[0];
  return result;
}

@end