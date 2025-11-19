@interface DBSAnalytics
+ (BOOL)checkAndUpdateFirst:(id)a3;
+ (BOOL)isChild;
+ (void)logAutomaticDarkModeEvent:(BOOL)a3;
+ (void)logBoldTextEvent:(BOOL)a3;
+ (void)logDarkModeEvent:(BOOL)a3;
+ (void)logEvent:(id)a3 feature:(id)a4 value:(id)a5;
@end

@implementation DBSAnalytics

+ (void)logDarkModeEvent:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [a1 logEvent:@"DarkMode" feature:@"dark_mode" value:v4];
}

+ (void)logAutomaticDarkModeEvent:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [a1 logEvent:@"AutomaticDarkMode" feature:@"automatic_dark_mode" value:v4];
}

+ (void)logBoldTextEvent:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [a1 logEvent:@"BoldText" feature:@"bold_text" value:v4];
}

+ (void)logEvent:(id)a3 feature:(id)a4 value:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CBEBD0];
  v11 = a3;
  v12 = [[v10 alloc] initWithSuiteName:@"com.apple.purplebuddy.notbackedup"];
  v13 = [v12 stringForKey:@"AppearanceModeChoice"];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &stru_2834977A0;
  }

  [a1 checkAndUpdateFirst:v11];

  v18 = v8;
  v19 = v9;
  v15 = v9;
  v16 = v8;
  v17 = v14;
  AnalyticsSendEventLazy();
}

id __39__DBSAnalytics_logEvent_feature_value___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v6[0] = @"child_account";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 56), "isChild")}];
  v7[0] = v2;
  v6[1] = @"first_update";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v7[1] = v3;
  v8 = *(a1 + 32);
  v6[2] = @"original_size";
  v6[3] = @"update_feature";
  v6[4] = @"update_option";
  v9 = *(a1 + 48);
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:5];

  return v4;
}

+ (BOOL)isChild
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.purplebuddy.notbackedup"];
  v3 = [v2 objectForKey:@"disposition"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"child"];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)checkAndUpdateFirst:(id)a3
{
  v3 = [@"DBSSettingsUpdated-" stringByAppendingString:a3];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:v3];

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 setBool:1 forKey:v3];

  return v5 ^ 1;
}

@end