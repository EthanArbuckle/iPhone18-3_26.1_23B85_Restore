@interface WCRDefaultLog
@end

@implementation WCRDefaultLog

uint64_t ____WCRDefaultLog_block_invoke()
{
  __WCRDefaultLog_osLogHandle = os_log_create("com.apple.webcontentrestrictions", "WebContentRestrictions");

  return MEMORY[0x2821F96F8]();
}

@end