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
  _applePodcastsFoundationSharedUserDefaults = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  bOOLForKey_ = [_applePodcastsFoundationSharedUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)isPodcastsCellularDownloadsEnabled
{
  v2 = objc_opt_self();

  _applePodcastsFoundationSettingsUserDefaults = [v2 _applePodcastsFoundationSettingsUserDefaults];
  bOOLForKey_ = [_applePodcastsFoundationSettingsUserDefaults BOOLForKey_];

  if (bOOLForKey_)
  {
    _applePodcastsFoundationSharedUserDefaults = [v2 _applePodcastsFoundationSharedUserDefaults];
    bOOLForKey_2 = [_applePodcastsFoundationSharedUserDefaults BOOLForKey_];

    return bOOLForKey_2;
  }

  else
  {

    return 0;
  }
}

@end