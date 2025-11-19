@interface PSGLoggingFacility
@end

@implementation PSGLoggingFacility

uint64_t ___PSGLoggingFacility_block_invoke()
{
  v0 = os_log_create("com.apple.preferences.GeneralSettings", "log");
  v1 = _PSGLoggingFacility_oslog;
  _PSGLoggingFacility_oslog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end