@interface PSLoggingFacility
@end

@implementation PSLoggingFacility

void ___PSLoggingFacility_block_invoke()
{
  v0 = os_log_create("com.apple.preferences", "log");
  v1 = _PSLoggingFacility_oslog;
  _PSLoggingFacility_oslog = v0;
}

@end