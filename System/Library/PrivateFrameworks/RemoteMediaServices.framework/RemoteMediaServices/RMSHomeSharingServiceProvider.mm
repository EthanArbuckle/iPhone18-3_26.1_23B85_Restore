@interface RMSHomeSharingServiceProvider
- (id)searchScope;
@end

@implementation RMSHomeSharingServiceProvider

- (id)searchScope
{
  CFPreferencesAppSynchronize(@"com.apple.RemoteMediaServices");
  v2 = 0;
  if (!CFPreferencesGetAppBooleanValue(@"AllowAnyHomeSharingID", @"com.apple.RemoteMediaServices", 0))
  {
    defaultStore = [MEMORY[0x277D18008] defaultStore];
    groupID = [defaultStore groupID];

    v5 = &stru_28747BBC0;
    if (groupID)
    {
      v5 = groupID;
    }

    v2 = v5;
  }

  return v2;
}

@end