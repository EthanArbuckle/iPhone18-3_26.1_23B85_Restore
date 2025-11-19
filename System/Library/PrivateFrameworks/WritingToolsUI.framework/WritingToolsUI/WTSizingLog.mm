@interface WTSizingLog
@end

@implementation WTSizingLog

uint64_t ___WTSizingLog_block_invoke()
{
  _WTSizingLog_log = os_log_create("com.apple.WritingTools", "Sizing");

  return MEMORY[0x1EEE66BB8]();
}

@end