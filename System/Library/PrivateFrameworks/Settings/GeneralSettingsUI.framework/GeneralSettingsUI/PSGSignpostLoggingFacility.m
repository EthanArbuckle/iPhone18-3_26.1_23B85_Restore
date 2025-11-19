@interface PSGSignpostLoggingFacility
@end

@implementation PSGSignpostLoggingFacility

uint64_t ___PSGSignpostLoggingFacility_block_invoke()
{
  v0 = os_log_create("com.apple.preferences.GeneralSettings", "Signposts");
  v1 = _PSGSignpostLoggingFacility_oslog;
  _PSGSignpostLoggingFacility_oslog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end