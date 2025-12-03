@interface TonesUsageBundleStorageReporter
- (float)sizeForCategory:(id)category;
- (id)_localizedStringWithIdentifier:(id)identifier;
- (id)usageBundleApps;
- (void)usageBundleApp:(id)app willDisplaySpecifier:(id *)specifier;
@end

@implementation TonesUsageBundleStorageReporter

- (id)_localizedStringWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:identifierCopy value:&stru_41C0 table:@"ToneSettingsUsage"];

  return v5;
}

- (id)usageBundleApps
{
  v3 = +[TLToneManager sharedToneManager];
  *&v4 = [v3 _installedTonesSize];
  v5 = [PSUsageBundleApp usageBundleAppForBundleWithIdentifier:@"com.apple.ToneSettingsUsage" withTotalSize:v4];
  v6 = [(TonesUsageBundleStorageReporter *)self _localizedStringWithIdentifier:@"SOUNDS"];
  [v5 setName:v6];

  v7 = [(TonesUsageBundleStorageReporter *)self _localizedStringWithIdentifier:@"DOWNLOADED_TONES"];
  v8 = [PSUsageBundleCategory categoryNamed:v7 withIdentifier:@"CATEGORY_DOWNLOADED_TONES" forUsageBundleApp:v5];

  v9 = [NSArray arrayWithObject:v8];
  [v5 setCategories:v9];

  v10 = [NSArray arrayWithObject:v5];

  return v10;
}

- (float)sizeForCategory:(id)category
{
  v3 = +[TLToneManager sharedToneManager];
  _installedTonesSize = [v3 _installedTonesSize];

  return _installedTonesSize;
}

- (void)usageBundleApp:(id)app willDisplaySpecifier:(id *)specifier
{
  bundleIdentifier = [app bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.ToneSettingsUsage"];

  if (v6)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    resourcePath = [v7 resourcePath];

    v8 = [resourcePath stringByAppendingPathComponent:@"Settings-Sound"];
    v9 = [v8 stringByAppendingPathExtension:@"png"];

    [*specifier setProperty:v9 forKey:PSBundleIconPathKey];
    [*specifier setupIconImageWithPath:resourcePath];
  }
}

@end