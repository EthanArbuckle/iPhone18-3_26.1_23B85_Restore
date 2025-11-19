@interface STBlockingUILog
+ (OS_os_log)log;
@end

@implementation STBlockingUILog

+ (OS_os_log)log
{
  if (log_onceToken != -1)
  {
    +[STBlockingUILog log];
  }

  v3 = log_log;

  return v3;
}

uint64_t __22__STBlockingUILog_log__block_invoke()
{
  log_log = os_log_create("com.apple.ScreenTimeUI", "blockingUI");

  return MEMORY[0x2821F96F8]();
}

@end