@interface DBSAnalytics
+ (BOOL)checkAndUpdateFirst:(id)first;
+ (BOOL)isChild;
+ (void)logAutomaticDarkModeEvent:(BOOL)event;
+ (void)logBoldTextEvent:(BOOL)event;
+ (void)logDarkModeEvent:(BOOL)event;
+ (void)logEvent:(id)event feature:(id)feature value:(id)value;
@end

@implementation DBSAnalytics

+ (void)logDarkModeEvent:(BOOL)event
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:event];
  [self logEvent:@"DarkMode" feature:@"dark_mode" value:v4];
}

+ (void)logAutomaticDarkModeEvent:(BOOL)event
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:event];
  [self logEvent:@"AutomaticDarkMode" feature:@"automatic_dark_mode" value:v4];
}

+ (void)logBoldTextEvent:(BOOL)event
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:event];
  [self logEvent:@"BoldText" feature:@"bold_text" value:v4];
}

+ (void)logEvent:(id)event feature:(id)feature value:(id)value
{
  featureCopy = feature;
  valueCopy = value;
  v10 = MEMORY[0x277CBEBD0];
  eventCopy = event;
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

  [self checkAndUpdateFirst:eventCopy];

  v18 = featureCopy;
  v19 = valueCopy;
  v15 = valueCopy;
  v16 = featureCopy;
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
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)checkAndUpdateFirst:(id)first
{
  v3 = [@"DBSSettingsUpdated-" stringByAppendingString:first];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:v3];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 setBool:1 forKey:v3];

  return v5 ^ 1;
}

@end