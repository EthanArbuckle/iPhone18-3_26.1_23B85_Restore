@interface DefaultLogHandler
@end

@implementation DefaultLogHandler

os_log_t ___DefaultLogHandler_block_invoke()
{
  result = os_log_create("com.apple.libauthinstall", "AMAuthInstallLog");
  _DefaultLogHandler_logHandle = result;
  return result;
}

@end