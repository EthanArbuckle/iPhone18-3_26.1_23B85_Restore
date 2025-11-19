@interface ICReachability
- (BOOL)isGlobalCellularEnabled;
- (BOOL)isPodcastsCellularDownloadsEnabled;
- (BOOL)isReachable;
@end

@implementation ICReachability

- (BOOL)isReachable
{

  v2 = sub_1D8E6F8B4();

  return v2 & 1;
}

- (BOOL)isGlobalCellularEnabled
{
  v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 BOOLForKey_];

  return v3;
}

- (BOOL)isPodcastsCellularDownloadsEnabled
{
  v2 = objc_opt_self();

  v3 = [v2 _applePodcastsFoundationSettingsUserDefaults];
  v4 = [v3 BOOLForKey_];

  if (v4)
  {
    v5 = [v2 _applePodcastsFoundationSharedUserDefaults];
    v6 = [v5 BOOLForKey_];

    return v6;
  }

  else
  {

    return 0;
  }
}

@end