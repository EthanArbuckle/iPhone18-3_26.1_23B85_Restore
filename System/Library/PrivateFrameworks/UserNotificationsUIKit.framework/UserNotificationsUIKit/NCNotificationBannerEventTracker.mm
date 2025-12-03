@interface NCNotificationBannerEventTracker
+ (void)presentedNotificationRequestAsBanner:(id)banner;
@end

@implementation NCNotificationBannerEventTracker

+ (void)presentedNotificationRequestAsBanner:(id)banner
{
  bannerCopy = banner;
  v4 = +[NCNotificationEventTracker sharedInstance];
  [v4 presentedNotificationRequestAsBanner:bannerCopy];
}

@end