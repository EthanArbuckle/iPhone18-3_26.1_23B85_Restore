@interface SUCoreDDMUtilities
+ (BOOL)_forceSupervision;
+ (id)sharedLogger;
+ (void)postNotificationOfType:(unsigned __int16)type description:(id)description;
@end

@implementation SUCoreDDMUtilities

+ (id)sharedLogger
{
  if (sharedLogger_loggerOnce != -1)
  {
    +[SUCoreDDMUtilities sharedLogger];
  }

  v3 = sharedLogger_logger;

  return v3;
}

uint64_t __34__SUCoreDDMUtilities_sharedLogger__block_invoke()
{
  sharedLogger_logger = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"DDM"];

  return MEMORY[0x2821F96F8]();
}

+ (void)postNotificationOfType:(unsigned __int16)type description:(id)description
{
  typeCopy = type;
  v16 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  if (descriptionCopy)
  {
    v6 = +[SUCoreDDMUtilities sharedLogger];
    oslog = [v6 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (typeCopy > 4)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = off_27892E0B0[typeCopy];
      }

      v10 = 136315650;
      v11 = "+[SUCoreDDMUtilities postNotificationOfType:description:]";
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = descriptionCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%s: Posting %{public}@ for %{public}@", &v10, 0x20u);
    }
  }

  if (typeCopy <= 4)
  {
    notify_post([(__CFString *)*off_27892E0D8[typeCopy] UTF8String]);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_forceSupervision
{
  v9 = *MEMORY[0x277D85DE8];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceSupervision", @"com.apple.sucore.ddm", 0);
  if (AppBooleanValue)
  {
    v3 = +[SUCoreDDMUtilities sharedLogger];
    oslog = [v3 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "+[SUCoreDDMUtilities _forceSupervision]";
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%s: forceSupervision is set", &v7, 0xCu);
    }
  }

  result = AppBooleanValue != 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end