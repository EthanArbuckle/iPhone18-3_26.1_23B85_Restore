@interface SUSUILoggingFacility
@end

@implementation SUSUILoggingFacility

uint64_t ___SUSUILoggingFacility_block_invoke()
{
  v0 = os_log_create("com.apple.preferences.SoftwareUpdateSettingsUI", "log");
  v1 = _SUSUILoggingFacility_oslog;
  _SUSUILoggingFacility_oslog = v0;
  return MEMORY[0x277D82BD8](v1);
}

@end