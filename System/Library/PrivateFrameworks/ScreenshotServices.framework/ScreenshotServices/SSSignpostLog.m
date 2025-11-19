@interface SSSignpostLog
@end

@implementation SSSignpostLog

uint64_t ___SSSignpostLog_block_invoke()
{
  _SSSignpostLog____SSSignpostLog = os_log_create("com.apple.screenshotservices", "signposts");

  return MEMORY[0x1EEE66BB8]();
}

@end