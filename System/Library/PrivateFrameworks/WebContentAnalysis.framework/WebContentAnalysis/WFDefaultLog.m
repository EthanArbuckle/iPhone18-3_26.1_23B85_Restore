@interface WFDefaultLog
@end

@implementation WFDefaultLog

os_log_t ____WFDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.webcontentfilter", "default");
  __WFDefaultLog_log = result;
  return result;
}

@end