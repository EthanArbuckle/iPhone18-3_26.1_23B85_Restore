@interface UIFoundationWriteLog
@end

@implementation UIFoundationWriteLog

uint64_t ____UIFoundationWriteLog_block_invoke(uint64_t a1)
{
  __UIFoundationWriteLog_uifoundationLog = os_log_create("com.apple.UIFoundation", *(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

@end