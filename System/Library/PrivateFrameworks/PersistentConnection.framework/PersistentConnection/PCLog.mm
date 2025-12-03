@interface PCLog
+ (OS_os_log)interfaceManager;
+ (OS_os_log)timer;
+ (OS_os_log)usabilityMonitor;
+ (OS_os_log)wakeManager;
+ (id)logWithCategory:(const char *)category;
@end

@implementation PCLog

+ (OS_os_log)timer
{
  if (timer_onceToken != -1)
  {
    +[PCLog timer];
  }

  v3 = timer___log;

  return v3;
}

+ (OS_os_log)wakeManager
{
  if (wakeManager_onceToken != -1)
  {
    +[PCLog wakeManager];
  }

  v3 = wakeManager___log;

  return v3;
}

+ (OS_os_log)usabilityMonitor
{
  if (usabilityMonitor_onceToken != -1)
  {
    +[PCLog usabilityMonitor];
  }

  v3 = usabilityMonitor___log;

  return v3;
}

+ (id)logWithCategory:(const char *)category
{
  v3 = os_log_create("com.apple.PersistentConnection", category);

  return v3;
}

uint64_t __25__PCLog_usabilityMonitor__block_invoke()
{
  usabilityMonitor___log = os_log_create("com.apple.PersistentConnection", "usabilityMonitor");

  return MEMORY[0x2821F96F8]();
}

uint64_t __20__PCLog_wakeManager__block_invoke()
{
  wakeManager___log = os_log_create("com.apple.PersistentConnection", "wakeManager");

  return MEMORY[0x2821F96F8]();
}

uint64_t __14__PCLog_timer__block_invoke()
{
  timer___log = os_log_create("com.apple.PersistentConnection", "timer");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)interfaceManager
{
  if (interfaceManager_onceToken != -1)
  {
    +[PCLog interfaceManager];
  }

  v3 = interfaceManager___log;

  return v3;
}

uint64_t __25__PCLog_interfaceManager__block_invoke()
{
  interfaceManager___log = os_log_create("com.apple.PersistentConnection", "interfaceManager");

  return MEMORY[0x2821F96F8]();
}

@end