@interface NCNotificationBannerEventTracker
+ (void)presentedNotificationRequestAsBanner:(id)a3;
@end

@implementation NCNotificationBannerEventTracker

+ (void)presentedNotificationRequestAsBanner:(id)a3
{
  v3 = a3;
  v4 = +[NCNotificationEventTracker sharedInstance];
  [v4 presentedNotificationRequestAsBanner:v3];
}

@end