@interface SUSUIInternalLoggingFacility
@end

@implementation SUSUIInternalLoggingFacility

uint64_t ___SUSUIInternalLoggingFacility_block_invoke()
{
  v0 = os_log_create("com.apple.preferences.SoftwareUpdateSettingsUI", "log");
  v1 = _SUSUIInternalLoggingFacility_oslog;
  _SUSUIInternalLoggingFacility_oslog = v0;
  return MEMORY[0x277D82BD8](v1);
}

@end