@interface WBSSharedFeatureAvailability
+ (BOOL)areLocalSiriSuggestionsEnabled;
+ (BOOL)areSiriSearchSuggestionsEnabled;
+ (void)setLocalSiriSuggestionsEnabled:(BOOL)enabled;
@end

@implementation WBSSharedFeatureAvailability

+ (BOOL)areSiriSearchSuggestionsEnabled
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([safari_browserDefaults BOOLForKey:*MEMORY[0x1E69C8D90]])
  {
    areLocalSiriSuggestionsEnabled = [self areLocalSiriSuggestionsEnabled];
  }

  else
  {
    areLocalSiriSuggestionsEnabled = 0;
  }

  return areLocalSiriSuggestionsEnabled;
}

+ (BOOL)areLocalSiriSuggestionsEnabled
{
  safariApplicationPlatformBundleIdentifier = [self safariApplicationPlatformBundleIdentifier];
  v3 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v4 = [v3 containsObject:safariApplicationPlatformBundleIdentifier];

  return v4 ^ 1;
}

+ (void)setLocalSiriSuggestionsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  safariApplicationPlatformBundleIdentifier = [self safariApplicationPlatformBundleIdentifier];
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
  if (enabledCopy)
  {
    [v6 removeObject:safariApplicationPlatformBundleIdentifier];
  }

  else if (([v6 containsObject:safariApplicationPlatformBundleIdentifier] & 1) == 0)
  {
    [v7 addObject:safariApplicationPlatformBundleIdentifier];
  }

  CFPreferencesSetAppValue(@"AppCanShowSiriSuggestionsBlacklist", v7, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

@end