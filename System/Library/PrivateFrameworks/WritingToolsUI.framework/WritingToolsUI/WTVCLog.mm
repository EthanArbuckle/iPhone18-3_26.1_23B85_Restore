@interface WTVCLog
@end

@implementation WTVCLog

uint64_t ___WTVCLog_block_invoke()
{
  _WTVCLog_log = os_log_create("com.apple.WritingTools", "WTWritingToolsViewController");

  return MEMORY[0x1EEE66BB8]();
}

@end