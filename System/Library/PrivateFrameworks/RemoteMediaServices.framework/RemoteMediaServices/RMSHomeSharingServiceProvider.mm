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
    v3 = [MEMORY[0x277D18008] defaultStore];
    v4 = [v3 groupID];

    v5 = &stru_28747BBC0;
    if (v4)
    {
      v5 = v4;
    }

    v2 = v5;
  }

  return v2;
}

@end