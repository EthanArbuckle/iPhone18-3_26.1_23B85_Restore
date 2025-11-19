@interface STUILog
+ (NSDictionary)logCategories;
+ (OS_os_log)accessList;
+ (OS_os_log)ageMigrationTip;
+ (OS_os_log)alwaysAllowed;
+ (OS_os_log)apps;
+ (OS_os_log)budgets;
+ (OS_os_log)childSetup;
+ (OS_os_log)communication;
+ (OS_os_log)communicationSafety;
+ (OS_os_log)contentPrivacy;
+ (OS_os_log)eyeRelief;
+ (OS_os_log)icons;
+ (OS_os_log)persistence;
+ (OS_os_log)requests;
+ (OS_os_log)usage;
+ (OS_os_log)users;
@end

@implementation STUILog

+ (NSDictionary)logCategories
{
  if (logCategories_onceToken != -1)
  {
    +[STUILog logCategories];
  }

  v3 = logCategories__logCategories;

  return v3;
}

void __24__STUILog_logCategories__block_invoke()
{
  v18[15] = *MEMORY[0x277D85DE8];
  v17[0] = @"accessList";
  v16 = os_log_create("com.apple.screentime.settingsui", "accessList");
  v18[0] = v16;
  v17[1] = @"apps";
  v15 = os_log_create("com.apple.screentime.settingsui", "apps");
  v18[1] = v15;
  v17[2] = @"budgets";
  v14 = os_log_create("com.apple.screentime.settingsui", "budgets");
  v18[2] = v14;
  v17[3] = @"alwaysAllowed";
  v13 = os_log_create("com.apple.screentime.settingsui", "alwaysAllowed");
  v18[3] = v13;
  v17[4] = @"communication";
  v12 = os_log_create("com.apple.screentime.settingsui", "communication");
  v18[4] = v12;
  v17[5] = @"communicationSafety";
  v0 = os_log_create("com.apple.screentime.settingsui", "communicationSafety");
  v18[5] = v0;
  v17[6] = @"contentPrivacy";
  v1 = os_log_create("com.apple.screentime.settingsui", "contentPrivacy");
  v18[6] = v1;
  v17[7] = @"persistence";
  v2 = os_log_create("com.apple.screentime.settingsui", "persistence");
  v18[7] = v2;
  v17[8] = @"usage";
  v3 = os_log_create("com.apple.screentime.settingsui", "usage");
  v18[8] = v3;
  v17[9] = @"icons";
  v4 = os_log_create("com.apple.screentime.settingsui", "icons");
  v18[9] = v4;
  v17[10] = @"requests";
  v5 = os_log_create("com.apple.screentime.settingsui", "requests");
  v18[10] = v5;
  v17[11] = @"users";
  v6 = os_log_create("com.apple.screentime.settingsui", "users");
  v18[11] = v6;
  v17[12] = @"childSetup";
  v7 = os_log_create("com.apple.screentime.settingsui", "childSetup");
  v18[12] = v7;
  v17[13] = @"eyeRelief";
  v8 = os_log_create("com.apple.screentime.settingsui", "eyeRelief");
  v18[13] = v8;
  v17[14] = @"ageMigrationTip";
  v9 = os_log_create("com.apple.screentime.settingsui", "ageMigrationTip");
  v18[14] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:15];
  v11 = logCategories__logCategories;
  logCategories__logCategories = v10;
}

+ (OS_os_log)accessList
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"accessList"];

  return v3;
}

+ (OS_os_log)apps
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"apps"];

  return v3;
}

+ (OS_os_log)budgets
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"budgets"];

  return v3;
}

+ (OS_os_log)alwaysAllowed
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"alwaysAllowed"];

  return v3;
}

+ (OS_os_log)communication
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"communication"];

  return v3;
}

+ (OS_os_log)communicationSafety
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"communicationSafety"];

  return v3;
}

+ (OS_os_log)contentPrivacy
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"contentPrivacy"];

  return v3;
}

+ (OS_os_log)persistence
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"persistence"];

  return v3;
}

+ (OS_os_log)usage
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"usage"];

  return v3;
}

+ (OS_os_log)icons
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"icons"];

  return v3;
}

+ (OS_os_log)requests
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"requests"];

  return v3;
}

+ (OS_os_log)users
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"users"];

  return v3;
}

+ (OS_os_log)childSetup
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"childSetup"];

  return v3;
}

+ (OS_os_log)eyeRelief
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"eyeRelief"];

  return v3;
}

+ (OS_os_log)ageMigrationTip
{
  v2 = +[STUILog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"ageMigrationTip"];

  return v3;
}

@end