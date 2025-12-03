@interface WLLogController
+ (id)sharedLogger;
- (WLLogController)init;
- (void)_reloadLogPreferences;
- (void)logMessageFromAddress:(void *)address withLevel:(unint64_t)level format:(id)format args:(char *)args;
@end

@implementation WLLogController

+ (id)sharedLogger
{
  if (sharedLogger_onceToken != -1)
  {
    +[WLLogController sharedLogger];
  }

  v3 = sharedLogger_instance;

  return v3;
}

uint64_t __31__WLLogController_sharedLogger__block_invoke()
{
  v0 = objc_alloc_init(WLLogController);
  sharedLogger_instance = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (WLLogController)init
{
  v6.receiver = self;
  v6.super_class = WLLogController;
  v2 = [(WLLogController *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _loggingUserDefaultsChangedNotificationHandler, @"com.apple.welcomekit.log.defaultschange", 0, CFNotificationSuspensionBehaviorCoalesce);
    [(WLLogController *)v2 _reloadLogPreferences];
    v4 = v2;
  }

  return v2;
}

- (void)_reloadLogPreferences
{
  if (+[WLInternal isInternal])
  {
    self->_loggingEnabled = 1;
  }

  else
  {
    v5 = CFPreferencesCopyAppValue(@"LogToFile", @"com.apple.welcomekit");
    v3 = CFPreferencesCopyAppValue(@"LogToSyslog", @"com.apple.welcomekit");
    if ([v5 BOOLValue])
    {
      bOOLValue = 1;
    }

    else
    {
      bOOLValue = [v3 BOOLValue];
    }

    self->_loggingEnabled = bOOLValue;
  }
}

- (void)logMessageFromAddress:(void *)address withLevel:(unint64_t)level format:(id)format args:(char *)args
{
  formatCopy = format;
  if (self->_loggingEnabled)
  {
    v10 = formatCopy;
    if (logMessageFromAddress_withLevel_format_args__onceToken != -1)
    {
      [WLLogController logMessageFromAddress:withLevel:format:args:];
    }

    v9 = logMessageFromAddress_withLevel_format_args___WLLog_os_trace_type_map[level];
    os_log_shim_with_CFString();
    formatCopy = v10;
  }
}

void __63__WLLogController_logMessageFromAddress_withLevel_format_args___block_invoke()
{
  if (_block_invoke_onceToken != -1)
  {
    __63__WLLogController_logMessageFromAddress_withLevel_format_args___block_invoke_cold_1();
  }
}

uint64_t __63__WLLogController_logMessageFromAddress_withLevel_format_args___block_invoke_2()
{
  v0 = os_log_create("com.apple.welcomekit", "core");
  logMessageFromAddress_withLevel_format_args__log = v0;

  return MEMORY[0x2821F96F8](v0);
}

@end