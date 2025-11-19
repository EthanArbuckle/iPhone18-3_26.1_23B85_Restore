@interface WLLogController
+ (id)sharedLogger;
- (WLLogController)init;
- (void)_reloadLogPreferences;
- (void)logMessageFromAddress:(void *)a3 withLevel:(unint64_t)a4 format:(id)a5 args:(char *)a6;
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
      v4 = 1;
    }

    else
    {
      v4 = [v3 BOOLValue];
    }

    self->_loggingEnabled = v4;
  }
}

- (void)logMessageFromAddress:(void *)a3 withLevel:(unint64_t)a4 format:(id)a5 args:(char *)a6
{
  v8 = a5;
  if (self->_loggingEnabled)
  {
    v10 = v8;
    if (logMessageFromAddress_withLevel_format_args__onceToken != -1)
    {
      [WLLogController logMessageFromAddress:withLevel:format:args:];
    }

    v9 = logMessageFromAddress_withLevel_format_args___WLLog_os_trace_type_map[a4];
    os_log_shim_with_CFString();
    v8 = v10;
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