@interface MessagesUsagePreferencesDelegate
- (float)sizeForCategory:(id)a3;
- (id)usageBundleApps;
@end

@implementation MessagesUsagePreferencesDelegate

- (id)usageBundleApps
{
  v3 = [PSUsageBundleApp usageBundleAppForBundleWithIdentifier:@"com.apple.MobileSMS" withTotalSize:0.0];
  v9 = IMSharedHelperMessagesRootFolderPath();
  v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v9, 1), "count")}];
  v5 = objc_autoreleasePoolPush();
  IMSharedHelperMessagesRootFolderPath();
  IMLegacyCalculateFileSizeForPath();
  self->_totalSize = IMRoundFileSize();
  objc_autoreleasePoolPop(v5);
  v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Messages (Saved)", &stru_40C8, @"MessagesUsagePreferences"];
  [v4 addObject:{+[PSUsageBundleCategory categoryNamed:withIdentifier:forUsageBundleApp:](PSUsageBundleCategory, "categoryNamed:withIdentifier:forUsageBundleApp:", v6, IMSharedHelperMessagesRootFolderPath(), v3)}];
  *&v7 = self->_totalSize;
  [v3 setTotalSize:v7];
  [v3 setCategories:v4];

  return [NSArray arrayWithObjects:v3, 0];
}

- (float)sizeForCategory:(id)a3
{
  v3 = [NSNumber numberWithUnsignedLongLong:self->_totalSize];

  [(NSNumber *)v3 floatValue];
  return result;
}

@end