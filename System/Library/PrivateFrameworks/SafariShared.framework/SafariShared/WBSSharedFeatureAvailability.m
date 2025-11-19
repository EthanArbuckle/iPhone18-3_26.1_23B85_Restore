@interface WBSSharedFeatureAvailability
+ (BOOL)areLocalSiriSuggestionsEnabled;
+ (BOOL)areSiriSearchSuggestionsEnabled;
+ (void)setLocalSiriSuggestionsEnabled:(BOOL)a3;
@end

@implementation WBSSharedFeatureAvailability

+ (BOOL)areSiriSearchSuggestionsEnabled
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([v3 BOOLForKey:*MEMORY[0x1E69C8D90]])
  {
    v4 = [a1 areLocalSiriSuggestionsEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)areLocalSiriSuggestionsEnabled
{
  v2 = [a1 safariApplicationPlatformBundleIdentifier];
  v3 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v4 = [v3 containsObject:v2];

  return v4 ^ 1;
}

+ (void)setLocalSiriSuggestionsEnabled:(BOOL)a3
{
  v3 = a3;
  v9 = [a1 safariApplicationPlatformBundleIdentifier];
  v4 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  if (v3)
  {
    [v6 removeObject:v9];
  }

  else if (([v6 containsObject:v9] & 1) == 0)
  {
    [v7 addObject:v9];
  }

  CFPreferencesSetAppValue(@"AppCanShowSiriSuggestionsBlacklist", v7, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

@end